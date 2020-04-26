
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
      'Providence Holy Cross',
      '3946 Encino Hills Place
Encino, CA 91436',
      'Encino',
      'CA',
      'Encino',
      'Yes',
      '34.1418032',
      '-118.4992972'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Holy Cross'
        AND o.latitude = '34.1418032'
        AND o.longitude = '-118.4992972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Holy Cross'
        AND o.latitude = '34.1418032'
        AND o.longitude = '-118.4992972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Holy Cross'
        AND o.latitude = '34.1418032'
        AND o.longitude = '-118.4992972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Holy Cross'
        AND o.latitude = '34.1418032'
        AND o.longitude = '-118.4992972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Holy Cross'
        AND o.latitude = '34.1418032'
        AND o.longitude = '-118.4992972'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Holy Cross'
        AND o.latitude = '34.1418032'
        AND o.longitude = '-118.4992972'));

COMMIT;
