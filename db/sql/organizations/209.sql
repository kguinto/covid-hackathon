
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
      'Physicians Primary Care of SWFL',
      '1304 SE 8th Terrace #3212
Cape Coral, FL 33990',
      'Cape Coral',
      'FL',
      'Drop off at Buildings 1-4.    ',
      'Yes',
      '26.6367562',
      '-81.9459375'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Primary Care of SWFL'
        AND o.latitude = '26.6367562'
        AND o.longitude = '-81.9459375'));

COMMIT;
