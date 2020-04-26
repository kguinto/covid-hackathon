
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
      'Detroit Receiving Hospital',
      '4201 St. Antoine Blvd
Detroit, MI 48201',
      'Detroit',
      'MI',
      'Curbside procedure- please call/text Dr. Phillip Kucab at 734-678-5733',
      'Yes',
      '42.3535426',
      '-83.055094'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Receiving Hospital'
        AND o.latitude = '42.3535426'
        AND o.longitude = '-83.055094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Receiving Hospital'
        AND o.latitude = '42.3535426'
        AND o.longitude = '-83.055094'));

COMMIT;
