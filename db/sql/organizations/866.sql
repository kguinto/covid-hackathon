
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
      'Western Missouri Medical Center',
      '403 Burkarth Rd
Warrensburg, MO 64093',
      'Warrensburg',
      'MO',
      'M-F Outpatient Entrance, weekends Emergency Department',
      'No',
      '38.765869',
      '-93.7224074'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Missouri Medical Center'
        AND o.latitude = '38.765869'
        AND o.longitude = '-93.7224074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Missouri Medical Center'
        AND o.latitude = '38.765869'
        AND o.longitude = '-93.7224074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Missouri Medical Center'
        AND o.latitude = '38.765869'
        AND o.longitude = '-93.7224074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Missouri Medical Center'
        AND o.latitude = '38.765869'
        AND o.longitude = '-93.7224074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Missouri Medical Center'
        AND o.latitude = '38.765869'
        AND o.longitude = '-93.7224074'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('biohazard bags and home-made Deaconess masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Western Missouri Medical Center'
        AND o.latitude = '38.765869'
        AND o.longitude = '-93.7224074'));

COMMIT;
