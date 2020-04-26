
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
      'Anna Jaques Hospital and Anna Jaques Cancer Center',
      '25 Highland Ave
Newburyport, MA 01950',
      'Newburyport',
      'MA',
      'Attn: Mary Williamson',
      'Yes',
      '42.8137385',
      '-70.8908833'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anna Jaques Hospital and Anna Jaques Cancer Center'
        AND o.latitude = '42.8137385'
        AND o.longitude = '-70.8908833'));

COMMIT;
