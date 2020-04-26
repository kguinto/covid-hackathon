
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
      'UCHealth Greeley Emergency and Surgery Center',
      '6906 W 10th St
Greeley, CO 80634',
      'Greeley',
      'CO',
      'Curbside procedure ',
      'No',
      '40.4198355',
      '-104.7910209'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCHealth Greeley Emergency and Surgery Center'
        AND o.latitude = '40.4198355'
        AND o.longitude = '-104.7910209'));

COMMIT;
