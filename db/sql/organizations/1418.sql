
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
      'Hosparus Health',
      '6200 Dutchmans Ln
Louisville, KY 40205',
      'Louisville ',
      'KY',
      'Call Kim Kochersperger at (502)456-6200 to arrange drop off',
      'Yes',
      '38.2307461',
      '-85.6381111'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hosparus Health'
        AND o.latitude = '38.2307461'
        AND o.longitude = '-85.6381111'));

COMMIT;
