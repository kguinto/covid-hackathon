
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'North Central Bronx Hospital',
      '121 Westmoreland Ave #611
White Plains, NY 10606',
      'White Plains ',
      'NY',
      'ivan.cexp@gmail.com',
      'Yes',
      '41.0273952',
      '-73.7778007'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Bronx Hospital'
        AND o.latitude = '41.0273952'
        AND o.longitude = '-73.7778007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Bronx Hospital'
        AND o.latitude = '41.0273952'
        AND o.longitude = '-73.7778007'));

COMMIT;
