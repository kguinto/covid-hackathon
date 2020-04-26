
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
      'Bethesda Lutheran Communities',
      '14150 W 113th St
Lenexa, KS 66215',
      'Lenexa',
      'KS',
      'Attn:  Regional Director; can drop off outside of the front entrance door.',
      'No',
      '38.9249669',
      '-94.7502714'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bethesda Lutheran Communities'
        AND o.latitude = '38.9249669'
        AND o.longitude = '-94.7502714'));

COMMIT;
