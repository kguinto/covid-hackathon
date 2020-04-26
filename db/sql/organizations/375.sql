
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
      'Christus Spohn Beeville',
      '1500 E Houston St
Beeville, TX 78102',
      'Beeville',
      'TX',
      'Attn: Med Surg Pedi',
      'Yes',
      '28.406177',
      '-97.730742'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Spohn Beeville'
        AND o.latitude = '28.406177'
        AND o.longitude = '-97.730742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Spohn Beeville'
        AND o.latitude = '28.406177'
        AND o.longitude = '-97.730742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Spohn Beeville'
        AND o.latitude = '28.406177'
        AND o.longitude = '-97.730742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Spohn Beeville'
        AND o.latitude = '28.406177'
        AND o.longitude = '-97.730742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Spohn Beeville'
        AND o.latitude = '28.406177'
        AND o.longitude = '-97.730742'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Spohn Beeville'
        AND o.latitude = '28.406177'
        AND o.longitude = '-97.730742'));

COMMIT;
