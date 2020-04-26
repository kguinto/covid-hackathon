
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
      'Kokua Kalihi Valley Comprehensive Family Services',
      '2239 N School St
Honolulu, HI 96819',
      'Honolulu',
      'HI',
      '2239 North School Street',
      'Yes',
      '21.3406635',
      '-157.8745368'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kokua Kalihi Valley Comprehensive Family Services'
        AND o.latitude = '21.3406635'
        AND o.longitude = '-157.8745368'));

COMMIT;
