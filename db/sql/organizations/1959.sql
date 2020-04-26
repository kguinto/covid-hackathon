
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
      'Activa Home Health',
      '1501 Corporate Dr STE 230
Boynton Beach, FL 33426',
      'Boynton beach',
      'FL',
      '',
      'Yes',
      '26.513477',
      '-80.0780951'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Activa Home Health'
        AND o.latitude = '26.513477'
        AND o.longitude = '-80.0780951'));

COMMIT;
