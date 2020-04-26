
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
      'Rochester Manor +Villa',
      '174 Virginia Ave
Rochester, PA 15074',
      'Rochester',
      'PA',
      'Just inside first set of doors ',
      'Yes',
      '40.7018002',
      '-80.2773569'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Manor +Villa'
        AND o.latitude = '40.7018002'
        AND o.longitude = '-80.2773569'));

COMMIT;
