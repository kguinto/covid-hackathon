
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
      'Mount Carmel East Hospital ',
      '6001 E Broad St
Columbus, OH 43213',
      'Columbus ',
      'OH',
      'Mailing address: 6001 E Broad St, Columbus OH 43213 ',
      'Yes',
      '39.9794179',
      '-82.8422191'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Carmel East Hospital '
        AND o.latitude = '39.9794179'
        AND o.longitude = '-82.8422191'));

COMMIT;
