
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
      'Anesthesia & Pain Consultants',
      '1009 Lark St #2
Johnson City, TN 37604',
      'Johnson City',
      'TN',
      'Contact David Runge davidrungecrna@gmail.com or 423-788-4339',
      'Yes',
      '36.3158929',
      '-82.3911145'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Anesthesia & Pain Consultants'
        AND o.latitude = '36.3158929'
        AND o.longitude = '-82.3911145'));

COMMIT;
