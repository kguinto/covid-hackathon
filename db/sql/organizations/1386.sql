
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
      'Courtyard Health Care',
      '1850 E 8th St
Davis, CA 95616',
      'Davis',
      'CA',
      'Receptionist will accept at door., Ring Doorbell after 8 p.m.',
      'Yes',
      '38.5525235',
      '-121.7285408'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Health Care'
        AND o.latitude = '38.5525235'
        AND o.longitude = '-121.7285408'));

COMMIT;
