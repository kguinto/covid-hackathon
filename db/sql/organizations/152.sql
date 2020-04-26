
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
      'Frederick Health',
      '400 West 7th St
Frederick, MD 21701',
      'Frederick',
      'MD',
      'New masks only. Drop off or mail. ',
      'Unsure',
      '39.4224195',
      '-77.4149715'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4224195'
        AND o.longitude = '-77.4149715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4224195'
        AND o.longitude = '-77.4149715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4224195'
        AND o.longitude = '-77.4149715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4224195'
        AND o.longitude = '-77.4149715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4224195'
        AND o.longitude = '-77.4149715'));

COMMIT;
