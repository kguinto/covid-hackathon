
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
      'Community Options Inc. ',
      '1010 W 9th Ave
King of Prussia, PA 19406',
      'King of Prussia ',
      'PA',
      'Curbside drop off ',
      'Yes',
      '40.1016255',
      '-75.4138505'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '40.1016255'
        AND o.longitude = '-75.4138505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '40.1016255'
        AND o.longitude = '-75.4138505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '40.1016255'
        AND o.longitude = '-75.4138505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '40.1016255'
        AND o.longitude = '-75.4138505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '40.1016255'
        AND o.longitude = '-75.4138505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '40.1016255'
        AND o.longitude = '-75.4138505'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc. '
        AND o.latitude = '40.1016255'
        AND o.longitude = '-75.4138505'));

COMMIT;
