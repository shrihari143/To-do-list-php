SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `to_do_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos_list`
--

CREATE TABLE `todos_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for table `todos_list`
--
ALTER TABLE `todos_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `todos_list`
--
ALTER TABLE `todos_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;


