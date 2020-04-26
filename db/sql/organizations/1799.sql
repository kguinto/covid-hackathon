
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
      'MEMORIAL HERMANN TMC',
      '6411 Fannin St
Houston, TX 77030',
      'Houston ',
      'TX',
      'attn: sarofim 8',
      'Yes',
      '29.7140772',
      '-95.3951404'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('chemo gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'MEMORIAL HERMANN TMC'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

COMMIT;
