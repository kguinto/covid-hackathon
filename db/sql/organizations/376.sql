
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
      'Crown Valley Imaging',
      ' 27401 Los Altos #180
Mission Viejo, CA 92691',
      'Mission Viejo',
      'CA',
      'Crown Valley Imaging LLC
27401 Los Altos Suite 180, Mission Viejo, CA 92691
Drop off is available at our front desk
Also can call 949-367-1010 x20',
      'Yes',
      '33.5641192',
      '-117.6660812'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crown Valley Imaging'
        AND o.latitude = '33.5641192'
        AND o.longitude = '-117.6660812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crown Valley Imaging'
        AND o.latitude = '33.5641192'
        AND o.longitude = '-117.6660812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crown Valley Imaging'
        AND o.latitude = '33.5641192'
        AND o.longitude = '-117.6660812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crown Valley Imaging'
        AND o.latitude = '33.5641192'
        AND o.longitude = '-117.6660812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crown Valley Imaging'
        AND o.latitude = '33.5641192'
        AND o.longitude = '-117.6660812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crown Valley Imaging'
        AND o.latitude = '33.5641192'
        AND o.longitude = '-117.6660812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crown Valley Imaging'
        AND o.latitude = '33.5641192'
        AND o.longitude = '-117.6660812'));

COMMIT;
