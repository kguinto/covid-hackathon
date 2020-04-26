
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
      'Children''s Wisconsin',
      '999 N 92nd St
Wauwatosa, WI 53226',
      'Wauwatosa',
      'WI',
      'Drop off: Children''s Corporate Center lobby (999 N. 92nd St.) from 9 a.m.-noon and from 1-3 p.m., Monday through Friday.',
      'Not sure',
      '43.0419426',
      '-88.0273046'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Any new scrubs or lab coats (including homemade)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Handmade masks (https://chw.org/-/media/files/for-patients-and-families/covid-19/mask-guidelines.pdf?la=en)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Wisconsin'
        AND o.latitude = '43.0419426'
        AND o.longitude = '-88.0273046'));

COMMIT;
