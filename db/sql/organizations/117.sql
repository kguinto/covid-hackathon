
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
      'CHOC Children''s Hospital',
      '1201 W La Veta Ave
Orange, CA 92868',
      'Orange',
      'CA',
      'TBD',
      'Yes',
      '33.7804929',
      '-117.8662537'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHOC Children''s Hospital'
        AND o.latitude = '33.7804929'
        AND o.longitude = '-117.8662537'));

COMMIT;
