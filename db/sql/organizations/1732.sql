
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
      'Bayshore Medical Center',
      '727 N Beers St
Holmdel, NJ 07733',
      'Homdel',
      'NJ',
      'ATTN: Rhonda Neal 4South ',
      'Yes',
      '40.4054853',
      '-74.1917012'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('We have nothing protecting us on our days off',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('because the public is stock piling items just a little hand santizer would helo',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bayshore Medical Center'
        AND o.latitude = '40.4054853'
        AND o.longitude = '-74.1917012'));

COMMIT;
