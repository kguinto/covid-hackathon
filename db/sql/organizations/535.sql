
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
      'Los Alamitos Medical Center',
      '3851 Katella Ave
Los Alamitos, CA 90720',
      'Los Alamitos ',
      'CA',
      'Please drop off to ER or lobby, Attn: Dr Lily Mulroy ',
      'No',
      '33.8035307',
      '-118.064817'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Alamitos Medical Center'
        AND o.latitude = '33.8035307'
        AND o.longitude = '-118.064817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Alamitos Medical Center'
        AND o.latitude = '33.8035307'
        AND o.longitude = '-118.064817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Alamitos Medical Center'
        AND o.latitude = '33.8035307'
        AND o.longitude = '-118.064817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Alamitos Medical Center'
        AND o.latitude = '33.8035307'
        AND o.longitude = '-118.064817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Alamitos Medical Center'
        AND o.latitude = '33.8035307'
        AND o.longitude = '-118.064817'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Alamitos Medical Center'
        AND o.latitude = '33.8035307'
        AND o.longitude = '-118.064817'));

COMMIT;
