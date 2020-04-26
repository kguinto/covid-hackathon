
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
      'Community Options Inc',
      '403 W Jefferson St
Butler, PA 16001',
      'Butler',
      'PA',
      'Curbside or mail',
      'Yes',
      '40.8608219',
      '-79.9007507'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '40.8608219'
        AND o.longitude = '-79.9007507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '40.8608219'
        AND o.longitude = '-79.9007507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '40.8608219'
        AND o.longitude = '-79.9007507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '40.8608219'
        AND o.longitude = '-79.9007507'));

COMMIT;
