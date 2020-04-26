
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
      'CHI Lakeside',
      '16901 Lakeside Hills Ct
Omaha, NE 68130',
      'Omaha',
      'NE',
      'Attn: ED, Dr Dreessen ',
      'Yes',
      '41.2375247',
      '-96.1806251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI Lakeside'
        AND o.latitude = '41.2375247'
        AND o.longitude = '-96.1806251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI Lakeside'
        AND o.latitude = '41.2375247'
        AND o.longitude = '-96.1806251'));

COMMIT;
