
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
      'M Health Fairview Lakes Hospital main entrance',
      '5200 Fairview Blvd
Wyoming, MN 55092',
      'Wyoming',
      'MN',
      'Monday-Friday, 7 a.m.-3 p.m. 
All items should be placed in a box labeled “Donation” and put in your trunk or non-passenger storage area of your vehicle.
Drive up to any of the three delivery sites. Remain in your vehicle. A staff member will come to you to retrieve the box.
The staff member will ask you for the following information:
https://umn.qualtrics.com/jfe/form/SV_9XifmHCuCykmOyh',
      '?',
      '45.321702',
      '-93.0003869'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'M Health Fairview Lakes Hospital main entrance'
        AND o.latitude = '45.321702'
        AND o.longitude = '-93.0003869'));

COMMIT;
