
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
      'Home Care Associates ',
      '1500 Walnut St #1000
Philadelphia, PA 19102',
      'Philadelphia ',
      'PA',
      'Suite is on 10th floor',
      'Yes',
      '39.9489949',
      '-75.1663033'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Care Associates '
        AND o.latitude = '39.9489949'
        AND o.longitude = '-75.1663033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Care Associates '
        AND o.latitude = '39.9489949'
        AND o.longitude = '-75.1663033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Care Associates '
        AND o.latitude = '39.9489949'
        AND o.longitude = '-75.1663033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Care Associates '
        AND o.latitude = '39.9489949'
        AND o.longitude = '-75.1663033'));

COMMIT;
