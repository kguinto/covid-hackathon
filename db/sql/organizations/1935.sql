
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
      'Bridgeport Hospital ',
      '267 Grant St
Bridgeport, CT 06610',
      'Bridgeport',
      'CT',
      '',
      'Yes',
      '41.1894899',
      '-73.165806'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bridgeport Hospital '
        AND o.latitude = '41.1894899'
        AND o.longitude = '-73.165806'));

COMMIT;
