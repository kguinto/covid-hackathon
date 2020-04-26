
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
      'Vincentian Home',
      '111 Perrymont Rd
Pittsburgh, PA 15237',
      'Pittsburgh',
      'PA',
      'Please contact Nathan Doherty at 412-297-3347',
      'Yes',
      '40.5590409',
      '-80.0265294'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vincentian Home'
        AND o.latitude = '40.5590409'
        AND o.longitude = '-80.0265294'));

COMMIT;
