
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
      'Baylor University Medical Center',
      'Wadley Tower
3600 Gaston Ave #656, Dallas, TX 75246',
      'Dallas',
      'TX',
      'Please bring to 5th floor of the Wadley building & ring doorbell, or call (214) 800-7974 to ask office manager to pick up from you on ground level. ',
      'Yes',
      '32.7901014',
      '-96.7801012'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor University Medical Center'
        AND o.latitude = '32.7901014'
        AND o.longitude = '-96.7801012'));

COMMIT;
