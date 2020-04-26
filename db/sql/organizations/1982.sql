
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
      'GSEP Emergency Medicine ',
      '11503 NW Military Hwy #202
San Antonio, TX 78230',
      'San Antonio ',
      'TX',
      '',
      'No',
      '29.5552592',
      '-98.5361408'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'GSEP Emergency Medicine '
        AND o.latitude = '29.5552592'
        AND o.longitude = '-98.5361408'));

COMMIT;
