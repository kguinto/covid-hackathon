
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
      'Heatherwood Skilled Nursing',
      '398 Bellevue Ave
Newport, RI 02840',
      'Newport',
      'RI',
      '',
      'Yes',
      '41.4771452',
      '-71.3073263'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heatherwood Skilled Nursing'
        AND o.latitude = '41.4771452'
        AND o.longitude = '-71.3073263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heatherwood Skilled Nursing'
        AND o.latitude = '41.4771452'
        AND o.longitude = '-71.3073263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heatherwood Skilled Nursing'
        AND o.latitude = '41.4771452'
        AND o.longitude = '-71.3073263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heatherwood Skilled Nursing'
        AND o.latitude = '41.4771452'
        AND o.longitude = '-71.3073263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heatherwood Skilled Nursing'
        AND o.latitude = '41.4771452'
        AND o.longitude = '-71.3073263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heatherwood Skilled Nursing'
        AND o.latitude = '41.4771452'
        AND o.longitude = '-71.3073263'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heatherwood Skilled Nursing'
        AND o.latitude = '41.4771452'
        AND o.longitude = '-71.3073263'));

COMMIT;
