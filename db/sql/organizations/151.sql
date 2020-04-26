
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
      'NYU Winthrop Hospital',
      '259 1st St
Mineola, Ny 11501',
      'Mineola',
      'NY',
      'Limited to 2 boxes only for in-person dropoffs. Drop off is adjacent to ED entrance outside of East Campus Station Rd. and 4th Ave. M-F 9AM-5PM.  See https://nyulangone.org/give/funds/covid-19 for more details and signup form.',
      'Yes',
      '40.7406366',
      '-73.6430449'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Head caps',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7406366'
        AND o.longitude = '-73.6430449'));

COMMIT;
