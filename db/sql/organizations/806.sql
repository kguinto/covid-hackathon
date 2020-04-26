
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
      'Sentara Leigh Hospital',
      '830 Kempsville Road
Norfolk, VA 23502',
      'Norfolk',
      'VA',
      'Curbside procedure',
      'Yes',
      '36.850608',
      '-76.1903378'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Leigh Hospital'
        AND o.latitude = '36.850608'
        AND o.longitude = '-76.1903378'));

COMMIT;
