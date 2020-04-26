
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
      'Community Options',
      '390 Main Road
Montville, NJ 07045',
      'Montville ',
      'NJ',
      'Call 9738727111',
      'Yes',
      '40.9165763',
      '-74.3630142'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.9165763'
        AND o.longitude = '-74.3630142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.9165763'
        AND o.longitude = '-74.3630142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.9165763'
        AND o.longitude = '-74.3630142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.9165763'
        AND o.longitude = '-74.3630142'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options'
        AND o.latitude = '40.9165763'
        AND o.longitude = '-74.3630142'));

COMMIT;
