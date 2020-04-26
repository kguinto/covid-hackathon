
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
      'Elmhurst Hospital',
      '79-01 Broadway
Flushing, NY 11373',
      'Elmhurst',
      'NY',
      'If you are dropping off curbside between the hours of 9am and 4pm, you can contact Donna Adames at 718-334-5058. At any time of the day or night, you can call the CCU at 718-334-3360 and ask if someone can come pick up your delivery. You may have to explain the situation ("Hi, I''m so-and-so and I''m at the front of the hospital at 79-01 Broadway to drop off some PPE") since they won''t be expecting your call!

You can also mail items to:
Elmhurst Hospital Center
79-01 Broadway
Cardiology Dept D4-54
Elmhurst, NY 11373

I have provided the contact information for the Cardiology Dept, but we intend to distribute any personal protective equipment to everyone at the hospital who needs it (Emergency Dept, Internal Medicine, Medical Intensive Care Unit, etc). If you''d like to donate to a specific group of people, please include a note!',
      'Yes',
      '40.7450814',
      '-73.8857797'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Phone chargers for patients so they can speak to their loved ones',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elmhurst Hospital'
        AND o.latitude = '40.7450814'
        AND o.longitude = '-73.8857797'));

COMMIT;
