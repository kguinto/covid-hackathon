
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
      'Palo Pinto General Hospital',
      '400 SW 25th Ave
Mineral Wells, TX 76067',
      'Mineral Wells',
      'TX',
      'Drop off or mail, ATTN: Judy Lowe',
      'Yes',
      '32.7996209',
      '-98.1450007'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Pinto General Hospital'
        AND o.latitude = '32.7996209'
        AND o.longitude = '-98.1450007'));

COMMIT;
