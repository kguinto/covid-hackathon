
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
      'NYU Langone Tisch Hospital',
      '550 1st Avenue
New York, NY 10016',
      'New York - Manhattan',
      'NY',
      'Limited to 2 boxes only for in-person dropoffs. Drop off at Kimmel Loading Dock on FDR Drive near 34th St, M-F 9AM-5PM. See https://nyulangone.org/give/funds/covid-19 for more details and signup form.  Or email smw410@nyumc.org or call 917-547-0050',
      'Yes',
      '40.7421225',
      '-73.9739642'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Tisch Hospital'
        AND o.latitude = '40.7421225'
        AND o.longitude = '-73.9739642'));

COMMIT;
