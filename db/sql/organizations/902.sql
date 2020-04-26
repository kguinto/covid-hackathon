
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
      'St. Luke''s Hospital Bethlehem Campus',
      '801 Ostrum St
Bethlehem, PA 18015',
      'Bethlehem ',
      'PA',
      '',
      'Yes',
      '40.6089201',
      '-75.3937008'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s Hospital Bethlehem Campus'
        AND o.latitude = '40.6089201'
        AND o.longitude = '-75.3937008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s Hospital Bethlehem Campus'
        AND o.latitude = '40.6089201'
        AND o.longitude = '-75.3937008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s Hospital Bethlehem Campus'
        AND o.latitude = '40.6089201'
        AND o.longitude = '-75.3937008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s Hospital Bethlehem Campus'
        AND o.latitude = '40.6089201'
        AND o.longitude = '-75.3937008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s Hospital Bethlehem Campus'
        AND o.latitude = '40.6089201'
        AND o.longitude = '-75.3937008'));

COMMIT;
