
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
      'Mary Health of the Sick',
      '2929 Theresa Dr
Thousand Oaks, CA 91320',
      'Newbury Park',
      'CA',
      'At the front door',
      'Yes',
      '34.1806008',
      '-118.9380563'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mary Health of the Sick'
        AND o.latitude = '34.1806008'
        AND o.longitude = '-118.9380563'));

COMMIT;
