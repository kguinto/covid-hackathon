
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
      'Allegro Pediatrics - Sammamish',
      '22620 SE 4th Street, Suite #200
Sammamish, WA 98074',
      'Sammamish',
      'WA',
      '',
      'Yes',
      '47.6061726',
      '-122.0374304'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Sammamish'
        AND o.latitude = '47.6061726'
        AND o.longitude = '-122.0374304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Sammamish'
        AND o.latitude = '47.6061726'
        AND o.longitude = '-122.0374304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Sammamish'
        AND o.latitude = '47.6061726'
        AND o.longitude = '-122.0374304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Sammamish'
        AND o.latitude = '47.6061726'
        AND o.longitude = '-122.0374304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Sammamish'
        AND o.latitude = '47.6061726'
        AND o.longitude = '-122.0374304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Sammamish'
        AND o.latitude = '47.6061726'
        AND o.longitude = '-122.0374304'));

COMMIT;
