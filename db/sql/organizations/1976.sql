
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
      'Orange Family Medicine',
      '229 S Glassell St
Orange, CA 92866',
      'Orange',
      'CA',
      'Knock on front door',
      'Yes',
      '33.7855062',
      '-117.8524767'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Family Medicine'
        AND o.latitude = '33.7855062'
        AND o.longitude = '-117.8524767'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Family Medicine'
        AND o.latitude = '33.7855062'
        AND o.longitude = '-117.8524767'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Family Medicine'
        AND o.latitude = '33.7855062'
        AND o.longitude = '-117.8524767'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Family Medicine'
        AND o.latitude = '33.7855062'
        AND o.longitude = '-117.8524767'));

COMMIT;
