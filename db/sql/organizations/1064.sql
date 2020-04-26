
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
      'Sentara Obici Hospital',
      '2800 Godwin Blvd
Suffolk, VA 23434',
      'Suffolk',
      'VA',
      'We can pick up from your car outside the hospital. Please call 757-934-4147 to coordinate.',
      'Yes',
      '36.7727954',
      '-76.5812482'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Obici Hospital'
        AND o.latitude = '36.7727954'
        AND o.longitude = '-76.5812482'));

COMMIT;
